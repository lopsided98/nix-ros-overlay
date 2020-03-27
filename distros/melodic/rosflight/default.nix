
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, eigen-stl-containers, geometry-msgs, git, libyamlcpp, pkg-config, roscpp, rosflight-msgs, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-rosflight";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "3a4fce88ea7aadaa17da9a58951fd8335899e14e1c927951d7dad2544916278e";
  };

  buildType = "catkin";
  buildInputs = [ git pkg-config ];
  propagatedBuildInputs = [ boost eigen eigen-stl-containers geometry-msgs libyamlcpp roscpp rosflight-msgs sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing to the ROSflight autopilot firmware over MAVLink'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
