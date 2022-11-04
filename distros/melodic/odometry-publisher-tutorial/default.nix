
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-odometry-publisher-tutorial";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/odometry_publisher_tutorial/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "527ce0ada618e0e9a3109b743ceb896dd43f53e32acbe8bd948bf5cd82b23748";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The odometry_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
