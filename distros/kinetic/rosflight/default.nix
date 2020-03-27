
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, eigen-stl-containers, geometry-msgs, git, libyamlcpp, pkg-config, roscpp, rosflight-msgs, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-rosflight";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "a8fba8f79d9d2b9659ae15f033448623e033c8e61f16f853b09ae2b019d261f1";
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
