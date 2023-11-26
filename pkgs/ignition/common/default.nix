{ lib, stdenv, fetchFromGitHub, cmake, pkg-config, ignition
, ignition-cmake ? ignition.cmake, ignition-math ? ignition.math
, ignition-utils ? ignition.utils, libuuid, tinyxml-2, freeimage, gts, ffmpeg
, majorVersion ? "4"
, version ? "4.7.0"
, srcHash ? "sha256-y8qp0UVXxSJm0aJeUD64+aG+gfNEboInW7F6tvHYTPI="
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-common${majorVersion}";
  inherit version;

  src = fetchFromGitHub rec {
    name = "${rev}-source";
    owner = "gazebosim";
    repo = "gz-common";
    rev = "${pname}_${version}";
    hash = srcHash;
  };

  nativeBuildInputs = [ cmake ];
  propagatedNativeBuildInputs = [ ignition-cmake ];
  buildInputs = [ ignition-math tinyxml-2 ignition-math gts freeimage ffmpeg ]
    ++ lib.optional (lib.versionAtLeast version "4") ignition-utils;
  propagatedBuildInputs = [ libuuid ];

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
