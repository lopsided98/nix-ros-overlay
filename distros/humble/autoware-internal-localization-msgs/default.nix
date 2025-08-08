
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-common-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-internal-localization-msgs";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/humble/autoware_internal_localization_msgs/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "05973222b28034d4e519b8941bf034a4a7553c420e152f5adb0f86df1990367d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-common-msgs geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_internal_localization_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
