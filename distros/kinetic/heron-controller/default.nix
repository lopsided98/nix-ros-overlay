
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, geometry-msgs, heron-msgs, nav-msgs, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-heron-controller";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron_controller-release/archive/release/kinetic/heron_controller/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "cd412061c907947151c475277f93b48b6db4d03bcfb200928e5f08e94068e34a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-toolbox geometry-msgs heron-msgs nav-msgs sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heron_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
