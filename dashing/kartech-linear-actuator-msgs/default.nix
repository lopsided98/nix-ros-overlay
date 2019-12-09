
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-dashing-kartech-linear-actuator-msgs";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/dashing/kartech_linear_actuator_msgs/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "dadc3c49c1f47d24a1cfdd50323e5ac7a8b77eb982017485a9feb2f9487f0eee";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''The kartech_linear_actuator_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
