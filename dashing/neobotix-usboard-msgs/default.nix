
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-neobotix-usboard-msgs";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/dashing/neobotix_usboard_msgs/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "8294ef1e6755b4619ab77dcf8a0f91ddbd7a4a297dbd3988756a651716eec199";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs rosidl-default-runtime builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''neobotix_usboard package'';
    license = with lib.licenses; [ mit ];
  };
}
