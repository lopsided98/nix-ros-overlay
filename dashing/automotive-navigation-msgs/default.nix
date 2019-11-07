
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-automotive-navigation-msgs";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/dashing/automotive_navigation_msgs/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "5c6a5d8ea706f40a76b57505d8605540f59701828ffadab3f54c74f7ea651baa";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs geometry-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime geometry-msgs builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Generic Messages for Navigation Objectives in Automotive Automation Software'';
    license = with lib.licenses; [ mit ];
  };
}
