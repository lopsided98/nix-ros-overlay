
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, robot-localization, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-heron-control";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_control/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "a577a372b692460ec178d816731b46f89c3a34ac914b721a863bba1c272f26a8";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy robot-localization sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
