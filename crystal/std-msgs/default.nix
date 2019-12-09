
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-crystal-std-msgs";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/crystal/std_msgs/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "3713d137c312f568c5bb934b6fbf9794090862f5585cf34bdc7f080007d89720";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some standard message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
