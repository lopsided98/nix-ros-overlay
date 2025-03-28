
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-action-tutorials-interfaces";
  version = "0.20.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/action_tutorials_interfaces/0.20.5-1.tar.gz";
    name = "0.20.5-1.tar.gz";
    sha256 = "d0206e68051e4b9ad215a8dc95242b9303f9a91ace9f57f974ebb59bb568b96d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Action tutorials action";
    license = with lib.licenses; [ asl20 ];
  };
}
