
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-yosemite-valley";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/uav_testing-release/archive/release/melodic/yosemite_valley/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "17ea9be47c92993675a8ed37c5debe9afe9143406b2f2db5660305e58f02ce23";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The yosemite_valley package'';
    license = with lib.licenses; [ asl20 ];
  };
}
