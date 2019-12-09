
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, ament-lint-common, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-std-srvs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/std_srvs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "b6ba6ec36f1e6640455ea41ad2f1976e39e38ada117812e34146e68c1778dc25";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some standard service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
