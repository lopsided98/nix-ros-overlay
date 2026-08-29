
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-elite-robots-dashboard-msgs";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots_dashboard_msgs/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "64a5e8d91eb2221900230591b7617c01e9ee2581c674da90873703be842dd987";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Dashboard message interface";
    license = with lib.licenses; [ asl20 ];
  };
}
