
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-image-recognition-msgs";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/tue-robotics/image_recognition-release/archive/release/kinetic/image_recognition_msgs/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "2eb6856fb42192813c1ac60f0a408705c6e61ed425cf14f95b4aa6aa36d2717c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The image_recognition_msgs package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
