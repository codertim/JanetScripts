
(print "Starting ...")
# (print "args: " (dyn :args))
# (pp (dyn :args))
# (var cl-args (dyn :args))
# (var num1(get cl-args 1))
# (var operator(get cl-args 2))
# (var num2(get cl-args 3))
# (print "arg1: " num1)
# (print "arg2: " operator)
# (print "arg3: " num2)

(defn do-calc [num1 op num2] 
    (var result nil)
    (var is-operator-found false)
    # (print "do-calc - op is: " op)
    (if (= op "+")
        (do
            (print "adding ...")
            (set is-operator-found true)
            (set result (+ num1 num2)))
    )
    (if (= op "-")
        (do
            (print "subtracting ...")
            (set is-operator-found true)
            (set result (- num1 num2)))
    )
    (if (= op "*")
        (do
            (print "multiplying ...")
            (set is-operator-found true)
            (set result (* num1 num2)))
    )
    (if (= op "/")
        (do
            (print "dividing ...")
            (set is-operator-found true)
            (set result (/ num1 num2)))
    )
    (if (= is-operator-found false)
        (print "Error: operator not found"))
    result
)


(while true
    (print "\nEnter first number: ")
    (def first-num (scan-number (string/trim (file/read stdin :line))))
    (print "You entered: " first-num)

    (print "Enter operator: ")
    (def user-operator (string/trim (file/read stdin :line)))
    (print "You entered: " user-operator)

    (print "Enter second number: ")
    (def second-num (scan-number(string/trim (file/read stdin :line))))
    (print "You entered: " second-num)


    (def calculation (do-calc first-num user-operator second-num))
    (print "Calculation result: " calculation))

(print "Done.")


