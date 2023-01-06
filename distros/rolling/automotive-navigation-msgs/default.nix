
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-automotive-navigation-msgs";
  version = "3.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/rolling/automotive_navigation_msgs/3.0.4-2.tar.gz";
    name = "3.0.4-2.tar.gz";
    sha256 = "5b63ed892c5de906dbd1f3732cdf2a42e910a03a016d975d8b9750051008e2af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic Messages for Navigation Objectives in Automotive Automation Software'';
    license = with lib.licenses; [ mit ];
  };
}
