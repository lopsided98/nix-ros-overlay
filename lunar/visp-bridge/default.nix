
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, sensor-msgs, catkin, visp, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-visp-bridge";
  version = "0.10.0-r1";

  src = fetchurl {
    url = https://github.com/lagadic/vision_visp-release/archive/release/lunar/visp_bridge/0.10.0-1.tar.gz;
    sha256 = "b6df17cc49d961dbe7009da4f87a835193cd10ed8b55af60f06719280e9823a2";
  };

  buildInputs = [ visp std-msgs camera-calibration-parsers roscpp sensor-msgs geometry-msgs ];
  propagatedBuildInputs = [ visp std-msgs camera-calibration-parsers roscpp sensor-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Converts between ROS structures and ViSP structures.'';
    #license = lib.licenses.GPLv2;
  };
}
