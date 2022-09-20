
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tuw-airskin-msgs, tuw-gazebo-msgs, tuw-geometry-msgs, tuw-multi-robot-msgs, tuw-nav-msgs, tuw-object-msgs, tuw-vehicle-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_msgs/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "d220a642fe9b13209de81e68572102fffe34285934865e2ed9b8ebe9afe9baf4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ tuw-airskin-msgs tuw-gazebo-msgs tuw-geometry-msgs tuw-multi-robot-msgs tuw-nav-msgs tuw-object-msgs tuw-vehicle-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_msgs meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
