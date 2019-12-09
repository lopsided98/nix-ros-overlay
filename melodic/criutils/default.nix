
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, resource-retriever, std-msgs, baldor, pythonPackages, catkin, rostopic, cv-bridge, visualization-msgs, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-criutils";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/crigroup/criutils-release/archive/release/melodic/criutils/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "f888e13e68028b41ad7e64fb9e2430184b96fca5118ff59486331a07ce6dd119";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.termcolor pythonPackages.numpy sensor-msgs geometry-msgs resource-retriever std-msgs baldor rostopic cv-bridge visualization-msgs image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The criutils package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
