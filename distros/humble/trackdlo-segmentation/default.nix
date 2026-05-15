
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ament_python, cv-bridge, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-trackdlo-segmentation";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/humble/trackdlo_segmentation/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "e31e33f97dfbf830df207d5c096b769bf071685260958ec0113acfffd2355b96";
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
