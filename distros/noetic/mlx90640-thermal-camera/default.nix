
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mlx90640-thermal-camera";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/vakshit/mlx90640_thermal_camera-release/archive/release/noetic/mlx90640_thermal_camera/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "63616ae4b6f16b35521e693d78974842efd54f8f1a887d7046489064d3d5ecec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mlx90640_thermal_camera package'';
    license = with lib.licenses; [ mit ];
  };
}
