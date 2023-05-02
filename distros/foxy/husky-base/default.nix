
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, controller-manager, controller-manager-msgs, geometry-msgs, hardware-interface, husky-msgs, nav-msgs, pluginlib, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-foxy-husky-base";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_base/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "b864a1502658922e0346e87ca2974be6e7168eab89d10137b5b075c82aba8e9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface controller-manager controller-manager-msgs geometry-msgs hardware-interface husky-msgs nav-msgs pluginlib rclcpp sensor-msgs std-msgs std-srvs tf2 tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
