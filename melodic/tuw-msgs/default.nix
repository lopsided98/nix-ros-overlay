
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tuw-nav-msgs, tuw-geometry-msgs, tuw-airskin-msgs, tuw-object-msgs, tuw-vehicle-msgs, catkin, tuw-multi-robot-msgs, tuw-gazebo-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_msgs/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "d220a642fe9b13209de81e68572102fffe34285934865e2ed9b8ebe9afe9baf4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ tuw-nav-msgs tuw-geometry-msgs tuw-airskin-msgs tuw-object-msgs tuw-vehicle-msgs tuw-multi-robot-msgs tuw-gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_msgs meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
