
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-stubborn-buddies-msgs";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/stubborn_buddies-release/archive/release/rolling/stubborn_buddies_msgs/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "1b39ab6171d2f4eaafc29ab76b66aa4102790401180d61963e32863374226425";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages to support library of stubborn buddies'';
    license = with lib.licenses; [ asl20 ];
  };
}
