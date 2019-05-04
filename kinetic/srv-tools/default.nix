
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-tools, catkin, pointcloud-tools, tf-tools, plot-tools }:
buildRosPackage {
  pname = "ros-kinetic-srv-tools";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/srv/srv_tools-release/archive/release/kinetic/srv_tools/0.0.3-0.tar.gz;
    sha256 = "1ab6be9e947d3fe2f3ca32d6a3f2318d2dc769d5fca3ea25744e5d85a9da369b";
  };

  propagatedBuildInputs = [ plot-tools tf-tools launch-tools pointcloud-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stack with interesting ROS tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
