
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ament_python, ament-copyright, ament-flake8, ament-pep257, cv-bridge, message-filters, python3Packages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-trackdlo-utils";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/jazzy/trackdlo_utils/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "2787b7cf2f19f0640aff59aa9ef3606a0ad40b7d2564767c812ca814738fd37b";
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
