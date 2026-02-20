
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-lightning-rrt-interfaces";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/david-dorf/lightning_rrt_interfaces/archive/release/jazzy/lightning_rrt_interfaces/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "511091c0faee543ebc753e1f7a683233991b8089434294fb3df45a4327e628e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Lightning fast RRT path planner interfaces";
    license = with lib.licenses; [ mit ];
  };
}
