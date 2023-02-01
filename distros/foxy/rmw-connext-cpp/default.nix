
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, connext-cmake-module, rcpputils, rcutils, rmw, rmw-connext-shared-cpp, rosidl-cmake, rosidl-generator-dds-idl, rosidl-runtime-c, rosidl-runtime-cpp, rosidl-typesupport-connext-c, rosidl-typesupport-connext-cpp }:
buildRosPackage {
  pname = "ros-foxy-rmw-connext-cpp";
  version = "1.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmw_connext-release";
        rev = "release/foxy/rmw_connext_cpp/1.0.3-1";
        sha256 = "sha256-J0s/U3f69GIa3K10zfUkVDcwmKHaYHILO3KZptvOjXQ=";
      };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-dds-idl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module rcpputils rcutils rmw rmw-connext-shared-cpp rosidl-cmake rosidl-runtime-c rosidl-runtime-cpp rosidl-typesupport-connext-c rosidl-typesupport-connext-cpp ];
  nativeBuildInputs = [ ament-cmake rosidl-cmake ];

  meta = {
    description = ''Implement the ROS middleware interface using RTI Connext static code generation in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
