
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-hey5-description";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/hey5_description-release/archive/release/humble/hey5_description/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "f859d7d8dd5808ca0a7694aa90658b1ece198c3573cc6bcae002897b88ae6439";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
    etc.) of the Hey5 hand.  The files in this package are parsed and used by
    a variety of other components.  Most users will not interact directly
    with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
