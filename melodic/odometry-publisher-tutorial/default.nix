
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-odometry-publisher-tutorial";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/odometry_publisher_tutorial/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "2f5bd429f29f3d9c424db0f617558d73af9c851f1087f24742ebdda967f4e664";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The odometry_publisher_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
