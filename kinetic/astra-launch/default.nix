
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, depth-image-proc, tf, catkin, rgbd-launch, image-proc, nodelet, astra-camera }:
buildRosPackage {
  pname = "ros-kinetic-astra-launch";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/astra_launch-release/archive/release/kinetic/astra_launch/0.2.2-0.tar.gz;
    sha256 = "fb24af5599e03378f10f1a7e502ac5a18c0777947376ebf54b8460e92095aa40";
  };

  propagatedBuildInputs = [ depth-image-proc rgbd-launch nodelet image-proc tf astra-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drivers for Orbbec Astra Devices.'';
    #license = lib.licenses.BSD;
  };
}
