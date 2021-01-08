
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-description, joint-state-publisher-gui, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-dingo-viz";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_desktop-release/archive/release/melodic/dingo_viz/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f25fb2be9a06afe7fb48e34b67b7eab22f75bc876090501ac2c918efd8940c0c";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dingo-description joint-state-publisher-gui rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Dingo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
