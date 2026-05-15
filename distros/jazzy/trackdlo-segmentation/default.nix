
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ament_python, cv-bridge, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-trackdlo-segmentation";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/jazzy/trackdlo_segmentation/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "fe0b8900137dccdcd253277732514ce43fdae2c1835ba853424d4ab33f34fa6f";
  };

  buildType = "ament_python";
  buildInputs = [ _unresolved_ament_python ];
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ cv-bridge python3Packages.numpy python3Packages.opencv4 rclpy sensor-msgs ];
  nativeBuildInputs = [ _unresolved_ament_python ];

  meta = {
    description = "Pluggable segmentation interface for trackdlo_perception";
    license = with lib.licenses; [ bsd3 ];
  };
}
