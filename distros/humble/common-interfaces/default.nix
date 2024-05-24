
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, diagnostic-msgs, geometry-msgs, nav-msgs, sensor-msgs, shape-msgs, std-msgs, std-srvs, stereo-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-common-interfaces";
  version = "4.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/common_interfaces/4.2.4-1.tar.gz";
    name = "4.2.4-1.tar.gz";
    sha256 = "976ed12578424787a89584f51dbbd039b065896be39a4c83fb9a834b41b87fec";
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
