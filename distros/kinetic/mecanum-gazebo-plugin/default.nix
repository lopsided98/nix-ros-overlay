
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, rosconsole, roslint }:
buildRosPackage {
  pname = "ros-kinetic-mecanum-gazebo-plugin";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/mecanum_gazebo_plugin/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "d041fc4306cb3dc0f65f65c1c1529dd9d26d4520622e67ceb2dc7b9c46ccfbad";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ gazebo rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin which uses directional friction to simulate mecanum wheels.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
