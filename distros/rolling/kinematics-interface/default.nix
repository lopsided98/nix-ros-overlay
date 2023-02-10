
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-kinematics-interface";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/rolling/kinematics_interface/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "05785d486012efd58333fc10a4c22f9755b4a09505c048a8809eb1ea0c4015ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Kinematics interface for ROS 2 control'';
    license = with lib.licenses; [ asl20 ];
  };
}
