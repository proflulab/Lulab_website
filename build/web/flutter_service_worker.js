'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
<<<<<<< HEAD
const RESOURCES = {
  "assets/AssetManifest.json": "765d05c87fcec9600fb213c1d7eeb835",
"assets/assets/fonts/han.ttf": "987f863a302ddd9a6bfa727c4656af4c",
"assets/assets/images/AIclub.png": "50838e6a5e4f805a8f9d624b72cb1533",
"assets/assets/images/fengmian.png": "88cf1c3b5e431e6e428a8b9b84b40a32",
"assets/assets/images/homemarketing.jpg": "18de315485da3bcc3081c5e277d90702",
"assets/assets/images/image1.jpg": "f194ee6ef5ceadb7ef2e193f08e28a4e",
"assets/assets/images/image2.jpg": "2b3054380ca61bd79f8f8c5b7c3f503e",
"assets/assets/images/image3.jpg": "b6218d5246b284fe1b834e2297909284",
"assets/assets/images/image4.jpg": "4d170180555950cb81edf6322ef705da",
"assets/assets/images/laa.png": "af99557d5cec68dcff8de141fc22eaa2",
"assets/assets/images/literacy.png": "486bc5d6b203df9781c1b087c0f7adf6",
"assets/assets/images/lulab_logo.jpeg": "efb7df1d2b0816d2270a606e9412a915",
"assets/assets/images/LuXiangqian.png": "21f818456f73ff5bf941e971b9b15c05",
"assets/assets/images/marketing.jpg": "8c1dffd7d794ff452c594ff2e1a9c638",
"assets/assets/images/metaverseclub.png": "64e3f36ee9828df943a7584218bb04b0",
"assets/assets/images/microproject.png": "b9896b2db52786f3ca3347e6365f487b",
"assets/assets/images/start.gif": "2b3054380ca61bd79f8f8c5b7c3f503e",
"assets/assets/images/Technology.png": "45c213f598552998a1a5284fceaa585a",
"assets/assets/images/title.jpg": "857779237a5df2cbbed4305bf773b74e",
"assets/assets/images/video.mp4": "48c23309b9a8525cf46a9f77bf2225fc",
"assets/assets/images/xueyuan.jpg": "086dfd86615e85d71508dc1ba05c06f4",
"assets/FontManifest.json": "4396be0b59bce63dfdda655f4d526ad3",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "9eb886f1e07d0d34aeac7709bfea964f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "e18f89815558b4f0d02b98313faf2b81",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "39a841b5d46f0727ff745d424f3714f6",
"/": "39a841b5d46f0727ff745d424f3714f6",
"main.dart.js": "4de93b382aecacae633b8bc228986e77",
"manifest.json": "ec9a9c8f8a978707d577b152b6129598",
"version.json": "a9a5dec15ba410a109774bd55198f6e3"
};

=======

const RESOURCES = {"version.json": "a9a5dec15ba410a109774bd55198f6e3",
"index.html": "0d232afbb2062516350cc992a4eab986",
"/": "0d232afbb2062516350cc992a4eab986",
"main.dart.js": "06898eadfb879b3b1cb321c1b0ee611a",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "ec9a9c8f8a978707d577b152b6129598",
"assets/AssetManifest.json": "a9aeecfe3bc387f6d67cf6dc889b531b",
"assets/NOTICES": "58ceed3b629501b5507ba69a627f871a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "979c1d99cc7da0426d9df89105772f15",
"assets/fonts/MaterialIcons-Regular.otf": "3265e4dca96cbeed42cb8c8a4076328d",
"assets/assets/images/lobby.jpg": "2b3054380ca61bd79f8f8c5b7c3f503e",
"assets/assets/images/LuXiangqian.png": "21f818456f73ff5bf941e971b9b15c05",
"assets/assets/images/literacy.png": "486bc5d6b203df9781c1b087c0f7adf6",
"assets/assets/images/lulab_logo.png": "f0b54c04d02126e2449cb6e3b90390df",
"assets/assets/images/lu&yuminhong.jpg": "4d170180555950cb81edf6322ef705da",
"assets/assets/images/logo.png": "0b9fceb2a582b3f562698c63068d7c44",
"assets/assets/images/image1.jpg": "f194ee6ef5ceadb7ef2e193f08e28a4e",
"assets/assets/images/image2.jpg": "2b3054380ca61bd79f8f8c5b7c3f503e",
"assets/assets/images/image3.jpg": "b6218d5246b284fe1b834e2297909284",
"assets/assets/json/clubs.json": "c4d16c4725b0d4b5effb09278dfc045c",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
>>>>>>> dev_shiming
// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
