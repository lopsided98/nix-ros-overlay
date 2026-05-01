
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-common-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-internal-localization-msgs";
  version = "1.12.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/lyrical/autoware_internal_localization_msgs/1.12.1-3.tar.gz";
    name = "1.12.1-3.tar.gz";
    sha256 = "2e71eed385f276d92d52ef75d826370a06a90c38be8f5c9ac867def8fc4035ae";
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
