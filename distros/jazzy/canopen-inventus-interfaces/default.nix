
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-canopen-inventus-interfaces";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/canopen_inventus-release/archive/release/jazzy/canopen_inventus_interfaces/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "04d557185ab347d76b30224f67e5af6b34fb087d91e019cca43e8787ccc6c676";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Inventus Battery ROS interfaces for CANOpen implementation";
    license = with lib.licenses; [ bsd3 ];
  };
}
