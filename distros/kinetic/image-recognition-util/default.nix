
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-image-recognition-util";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/image_recognition_util/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "a05c90c1a492bfe7ac8775971aaf2fc5e69362f5e82b2329a32cacf3f92bbb99";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The image_recognition_util package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
