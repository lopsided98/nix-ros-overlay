
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-autoware-adapi-version-msgs";
  version = "1.9.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_adapi_msgs-release/archive/release/lyrical/autoware_adapi_version_msgs/1.9.0-4.tar.gz";
    name = "1.9.0-4.tar.gz";
    sha256 = "ef7c7b646b85a5d17a9d9515c14c5160970d457c60a579101cc97c6881cd57be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The Autoware AD API version interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
