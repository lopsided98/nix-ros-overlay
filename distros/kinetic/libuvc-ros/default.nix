
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libuvc-camera }:
buildRosPackage {
  pname = "ros-kinetic-libuvc-ros";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/kinetic/libuvc_ros/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "e82bed23f57fc5c3840c9307bbc83fa13fbd0084379104b83c59fb4f9724b4cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libuvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libuvc_ros metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
