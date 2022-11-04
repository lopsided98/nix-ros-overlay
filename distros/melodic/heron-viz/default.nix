
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, heron-description, joint-state-publisher, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-melodic-heron-viz";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_desktop-release/archive/release/melodic/heron_viz/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "d884b05c99242ce6154dd63a8bbe69bafa8d85dc5efdd640cf7ab524f96600f9";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ heron-description joint-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization and rviz helpers for Heron.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
