
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, geometry-msgs, nav-msgs, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-common-interfaces";
  version = "5.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/kilted/common_interfaces/5.5.1-1.tar.gz";
    name = "5.5.1-1.tar.gz";
    sha256 = "d048f560168f78a05366feef4efdfd1ccb3d4c84fe890b7d73e3dd44c47efe0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ actionlib-msgs builtin-interfaces diagnostic-msgs geometry-msgs nav-msgs sensor-msgs shape-msgs std-msgs std-srvs stereo-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "common_interfaces contains messages and services that are widely used by other ROS packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
