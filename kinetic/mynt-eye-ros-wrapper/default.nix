
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, geometry-msgs, std-msgs, tf, catkin, image-transport, cv-bridge, nodelet, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-mynt-eye-ros-wrapper";
  version = "0.2.8-r2";

  src = fetchurl {
    url = "https://github.com/harjeb/libmynteye-release/archive/release/kinetic/mynt_eye_ros_wrapper/0.2.8-2.tar.gz";
    name = "0.2.8-2.tar.gz";
    sha256 = "59fa581d854afacaa2bacf4886cf186cafd4555e1e40cabb13028953fe4137ae";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs tf image-transport cv-bridge nodelet roscpp message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs tf image-transport cv-bridge nodelet roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mynt eye ros wrapper package'';
    license = with lib.licenses; [ "Slightech License" ];
  };
}
