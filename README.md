# What is Simhae?

심해(心海) - 우리의 마음이 머무는 바다 (Simhae - Deep sea of mind)

We developed ‘Deep sea of mind’it called ‘Simhae’ which can communicate with suicide survivor and provide information about support center and offline meeting. The meaning of the title is sharing your heart in the deep sea.

# Getting Started

## Install

1. [How to install Flutter](https://flutter.dev/docs/get-started/install)

2. [Set up an editor](https://flutter.dev/docs/get-started/editor?tab=vscode)

## Build and Run

1. [Providing SHA1/SHA256 key](https://developers.google.com/android/guides/client-auth) 

2. After creating SHA-1 / 256 key using JAVA keytool, add it to "SHA certificate fingerprint" in "My App" of firebase.

3. Launch `Terminal` and move to Project Directory.

4. Enter `flutter pub get`.

5. Click `Run` tab on side of and 'create a launch.json' file.

6. Click the Run tab on the left side of VSCode and click create a launch.json file.

7. Select `Dart & Flutter` Environment.

8. Click the Run tab on the left side of VSCode and click the Run button to run.


# DB

| ![image](https://user-images.githubusercontent.com/59796964/80091107-8241d900-859b-11ea-94d4-499a982d1bd3.png) |
|:--:|
| InformationMapCommunity Firestore Database |

| ![image](https://user-images.githubusercontent.com/59796964/80091216-b1584a80-859b-11ea-9354-2bb1fae76625.png) |
|:--:|
| InformationMap Firestore Database |

| ![image](https://user-images.githubusercontent.com/59796964/80091300-d1880980-859b-11ea-83ed-34f3a8f492ad.png) |
|:--:|
| Users/Stories Firestore Database (Only if hasStory is true) |

| ![image](https://user-images.githubusercontent.com/59796964/80091322-dd73cb80-859b-11ea-861f-68ec5c1033f9.png) |
|:--:|
| MemorialSpace Firestore Database |


# Technical Stack

## Firebase - FireStore
- We used firestore because We built a community and felt the need for cloud DB.

- #### Usage

``` dart
StreamBuilder<QuerySnapshot>(
    stream: document.reference.collection('Stories').snapshots(),
    builder: (context, snapshot) {
        if (snapshot.hasError) {
            ...
        }
        switch (snapshot.connectionState) {
            case ConnectionState.waiting:
                ...
            default:
                List<DocumentSnapshot> documents = snapshot.data.documents;
                DocumentSnapshot document = documents[random.nextInt(documents.length)];
                ...
        }
    },
);
```
    
- #### [See more...](https://console.firebase.google.com)

## Firebase - Storage

- Used to store self-help meeting logos and activity photos.
The image address of the storage was saved from the `FireStore` database to retrieve photos.

- #### Usage

    > Get URL
    ``` dart
    Future<List<String>> _getURLs(List<String> paths) async {
        List<String> result = List<String>();

        final FirebaseStorage storage = FirebaseStorage(
            ...
        );

        for (var path in paths) {
            final String url = await storage.ref().child(path).getDownloadURL();
            result.add(url);
        }
        return result;
    }
    ```

    > Get FireStorage Image
    ``` dart
    FutureBuilder<List<String>>(
        future: _getURLs(mapData.images),
        builder: (context, snapshot) {
        Widget child;

        if (snapshot.hasData) {
            child = Image.network(snapshot.data[index]);
        } else if (snapshot.connectionState == ConnectionState.waiting) {
            child = Text('Loading...');
        }

        return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.white,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                        child: child,
                        ),
                    ),
                ),
            );
        },
    );
    ```

## Firebase - Authentication

- Among the various authentication methods, Google login was used because it used from many people and was easy to use.

- #### Usage

    > Authentication
    ``` dart
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
        await GlobalUserAccount.instance.connect(googleSignInAccount);
        final snapshot = await Firestore.instance
            .collection('Users')
            .document(GlobalUserAccount.instance.uid)
            .get();
        if (snapshot == null || !snapshot.exists) {
            Firestore.instance
                .collection('Users')
                .document(GlobalUserAccount.instance.uid)
                .setData({'hasStory': false}, merge: true);
        }
    }

    if (googleSignInAccount != null) {
        bool isAcceptAllTos = await _checkAllTosAccept();
        if (!isAcceptAllTos) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                builder: (context) => TosPage(),
                ),
            );
        }
    }
    ```

## Google Cloud Platform - Google Map

- Google Maps were used to visually indicate the location of the self-help group.
Because Google Maps covers 99% of the world's maps, We thought it was easy to expand services around the world.

- #### Usage

    > Google Map
    ``` dart
    GoogleMap(
        mapType: MapType.normal,
        markers: _markerLocations,
        initialCameraPosition: CameraPosition(
            target: LatLng(..., ...),
            zoom: 7.0,
        ),
        onMapCreated: (controller) {
            _controller.complete(controller);
        },
    );
    ```

## SQLite 

- It was used to determine whether the terms and conditions of use are agreed within the app.
implemented using sqflite package.

- #### Usage

    > Initialize Firestore Database
    ``` dart
    Future<Database> _open() async {
        Database database = await openDatabase(
        join(await getDatabasesPath(), 'settings.db'),
        onCreate: (db, version) {
            db.execute(
            ...
            );
            db.rawInsert(
            ...
            );
        },
        version: 1,
        );

        return database;
    }
    ```

    > Get Value from SQLite Database
    ``` dart
    Future<String> valueOf(String key) async {
        Database database = await _open();

        final List<Map<String, dynamic>> rawAppSettings = await database.query(
            ...
        );

        database.close();

        List<AppSetting> appSettings = List.generate(rawAppSettings.length, (i) {
            return AppSetting(
                ...
            );
        });

        AppSetting setting = appSettings.firstWhere((setting) => setting.key == key);
        return setting.value;
    }
    ```

    > Update SQLite Database
    ``` dart
    void update(AppSetting appSetting) async {
        Database database = await _open();

        await database.update(
            ...
        );

        database.close();
    }
    ```

# Preview

|||||||||
| --- | --- | --- | --- | --- | --- | --- | --- |
|![image](https://user-images.githubusercontent.com/8086407/80313389-9a2c8d80-8825-11ea-89cd-b67a0acad4d7.png)
|![image](https://user-images.githubusercontent.com/8086407/80313435-deb82900-8825-11ea-9370-e485bdb313de.png)
|![image](https://user-images.githubusercontent.com/8086407/80313468-fee7e800-8825-11ea-9dde-4ba96beb7cce.png)
|![image](https://user-images.githubusercontent.com/8086407/80313497-20e16a80-8826-11ea-962b-968516edeef6.png)
|![image](https://user-images.githubusercontent.com/8086407/80313561-87ff1f00-8826-11ea-93db-7cb935b44d0b.png)
|![image](https://user-images.githubusercontent.com/8086407/80313583-acf39200-8826-11ea-85f3-9130b2d2eb8b.png)
|![image](https://user-images.githubusercontent.com/8086407/80313583-acf39200-8826-11ea-85f3-9130b2d2eb8b.png)
|![preview8](https://lh3.googleusercontent.com/Gb57omLQX1D6u18KdSrVwQGJyE3MMD_xJeoIzk0Ipyk285LQuEyKNqmkgkfyp9ats1E=w1600-h708-rw)|



# Contributer

Yuna Kim - UI/UX Designer, Video productor

Younghoon Joe - Project Manager, Data Analyst

Jeongyoon Joo - Front/Back-End Developer

Sangbeom Hwang - Front/Back-End Developer