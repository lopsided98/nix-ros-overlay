
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-plugins, gazebo-ros, gazebo-ros-control, gazebo-ros-pkgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rr-openrover-simulation";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/rr_openrover_stack-release/archive/release/melodic/rr_openrover_simulation/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "ad3b243af2d65da484f820bd5447dcfed3bd791f9aa19296dac256d4b379d546";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs gazebo-plugins gazebo-ros gazebo-ros-control gazebo-ros-pkgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rr_openrover_simulation package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
