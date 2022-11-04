
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, eigen-stl-containers, geometry-msgs, git, libyamlcpp, pkg-config, roscpp, rosflight-msgs, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-rosflight";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "39677cf16d92770db360bc6aada7d212a62d80aa96c40b1027b34c327cd488d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin git pkg-config ];
  propagatedBuildInputs = [ boost eigen eigen-stl-containers geometry-msgs libyamlcpp roscpp rosflight-msgs sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing to the ROSflight autopilot firmware over MAVLink'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
