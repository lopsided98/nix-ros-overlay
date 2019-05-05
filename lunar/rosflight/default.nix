
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, boost, libyamlcpp, git, eigen-stl-containers, sensor-msgs, catkin, pkg-config, roscpp, eigen, std-msgs, tf, geometry-msgs, rosflight-msgs }:
buildRosPackage {
  pname = "ros-lunar-rosflight";
  version = "1.0.0";

  src = fetchurl {
    url = https://github.com/rosflight/rosflight-release/archive/release/lunar/rosflight/1.0.0-0.tar.gz;
    sha256 = "aef5d51696306a068976722e5d09caf21be8b24c847d30e71eddc4934e5a7fe0";
  };

  buildInputs = [ std-srvs boost libyamlcpp eigen-stl-containers git sensor-msgs pkg-config roscpp eigen std-msgs tf geometry-msgs rosflight-msgs ];
  propagatedBuildInputs = [ std-srvs boost libyamlcpp eigen-stl-containers sensor-msgs roscpp eigen std-msgs tf geometry-msgs rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for interfacing to the ROSflight autopilot firmware over MAVLink'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
