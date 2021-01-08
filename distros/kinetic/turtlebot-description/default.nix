
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, create-description, kobuki-description, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-description";
  version = "2.4.2";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot-release/archive/release/kinetic/turtlebot_description/2.4.2-0.tar.gz";
    name = "2.4.2-0.tar.gz";
    sha256 = "f516927f1373ea37fcc1e7f844f5b5799e3c7ab0c14d1e7863576f57bcfdb83f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ create-description kobuki-description urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot_description provides a complete 3D model of the TurtleBot for simulation and visualization. The files in this package are parsed and used by a variety of other components. Most users will not interact directly with this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
