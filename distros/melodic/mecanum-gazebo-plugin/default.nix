
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, rosconsole, roslint }:
buildRosPackage {
  pname = "ros-melodic-mecanum-gazebo-plugin";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/melodic/mecanum_gazebo_plugin/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "99846c791700f0795710304765004fd57ebe2b0b215c6a8b853208cc3571793e";
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
