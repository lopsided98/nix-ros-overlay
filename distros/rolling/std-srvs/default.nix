
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-std-srvs";
  version = "5.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/std_srvs/5.9.0-1.tar.gz";
    name = "5.9.0-1.tar.gz";
    sha256 = "e5de368c79bce4767bb9d4da5436c310ceb481d1d7fefa090a94331779b27415";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some standard service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
