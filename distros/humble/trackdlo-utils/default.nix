
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ament_python, ament-copyright, ament-flake8, ament-pep257, cv-bridge, message-filters, python3Packages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-trackdlo-utils";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/humble/trackdlo_utils/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "0d77ab5868a9ba2d8c29d2a79aa7eb7aca800a75e1e19e5c59d5caa9505552f2";
  };

  buildType = "ament_python";
  buildInputs = [ _unresolved_ament_python ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ cv-bridge message-filters python3Packages.numpy python3Packages.opencv4 python3Packages.scipy rclpy sensor-msgs sensor-msgs-py std-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ _unresolved_ament_python ];

  meta = {
    description = "trackdlo_perception: Visualization and parameter tuning tools";
    license = with lib.licenses; [ bsd3 ];
  };
}
