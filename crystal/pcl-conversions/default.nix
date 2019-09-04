
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, pcl, ament-cmake-gtest, sensor-msgs, eigen, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-pcl-conversions";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/pcl_conversions-release/archive/release/crystal/pcl_conversions/2.0.0-0.tar.gz;
    sha256 = "10639c7bb949fbb1640fa0c27d8e4d3a98c05ce8d896314a9d68551b9d476c55";
  };

  buildInputs = [ builtin-interfaces pcl sensor-msgs eigen std-msgs ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ builtin-interfaces pcl sensor-msgs eigen std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
