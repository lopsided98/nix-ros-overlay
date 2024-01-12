
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-weight-scale-interfaces";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/TechMagicKK/weight_scale_interfaces-release/archive/release/humble/weight_scale_interfaces/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "b8cac8f91ee3a15a4ab41ff5cb7a4919d6cc61f6ec4a001e946caa726b39813b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Definition of the interface for weight scale devices'';
    license = with lib.licenses; [ asl20 ];
  };
}
