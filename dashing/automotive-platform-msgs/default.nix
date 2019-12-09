
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-dashing-automotive-platform-msgs";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/automotive_autonomy_msgs-release/archive/release/dashing/automotive_platform_msgs/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "6b8af14fb7ae774eca8d57094eae134d0add17b127adb60d3d6c2a990a289a24";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Generic Messages for Communication with an Automotive Autonomous Platform'';
    license = with lib.licenses; [ mit ];
  };
}
