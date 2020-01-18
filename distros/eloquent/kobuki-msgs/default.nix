
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki_msgs-release/archive/release/eloquent/kobuki_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "4c50c131d55d3de6b109ab7774c007ee7e1344b8de1c8a5faa66b0f6f6483ec3";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      Kobuki message and service types: custom messages and services for Kobuki packages.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
