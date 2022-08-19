{ lib, stdenv, fetchFromGitHub, cmake, pkg-config, ignition
, ignition-cmake ? ignition.cmake, ignition-math ? ignition.math
, ignition-utils ? ignition.utils, libuuid, tinyxml-2, freeimage, gts, ffmpeg
, majorVersion ? "4"
, version ? "4.5.1"
, srcHash ? "sha256-Ut5/pvcpCbZH2QGleXW2bfiVcWm5zBdt7r1Hx+4F924="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-common${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "ignitionrobotics";
    repo = "ign-common";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  buildInputs = [ ignition-math tinyxml-2 ]
    ++ lib.optionals (lib.versionAtLeast version "3")
      [ ignition-math gts freeimage ffmpeg ]
    ++ lib.optional (lib.versionAtLeast version "4") ignition-utils;
  propagatedBuildInputs = [ libuuid ]
    ++ lib.optionals (lib.versionOlder version "3")
      [ ignition-math gts freeimage ffmpeg ];

  meta = with lib; {
    homepage = "https://ignitionrobotics.org/libs/common";
    description = "Miscellaneous libraries for Ignition Robotics";
    longDescription = ''
      Ignition Common, a component of Ignition Robotics, provides a set of
      libraries that cover many different use cases. An audio-visual library
      supports processing audio and video files, a graphics library can load a
      variety 3D mesh file formats into a generic in-memory representation, and
      the core library of Ignition Common contains functionality that spans
      Base64 encoding/decoding to thread pools.
    '';
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
