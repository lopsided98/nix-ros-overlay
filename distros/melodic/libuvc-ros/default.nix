
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libuvc-camera }:
buildRosPackage {
  pname = "ros-melodic-libuvc-ros";
  version = "0.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/melodic/libuvc_ros/0.0.10-1.tar.gz";
    name = "0.0.10-1.tar.gz";
    sha256 = "bcf16c5e63589493b35241bb6b6a8826db8b816d5966cc696e3c85f111339a0f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libuvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libuvc_ros metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
