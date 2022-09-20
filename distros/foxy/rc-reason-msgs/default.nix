
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rc-common-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rc-reason-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_reason_clients-release/archive/release/foxy/rc_reason_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "196d7862660b4c44b1c9729b3de31baadfe103442d0a87e7878c2607324588eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rc-common-msgs rosidl-default-runtime shape-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Msg and srv definitions for rc_reason_clients'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
